.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
or dl, cl
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, esi
bt rcx, rcx
and dl, 37 # instrumentation
cmovnbe bx, cx
cmovns cx, ax
jmp .bb_0.1
.bb_0.1:
test eax, 1729060510
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
not rax
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
