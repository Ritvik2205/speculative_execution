.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, al
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 8
xor cl, sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor al, al
test eax, 158941032
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], dx
test rsi, 82
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
bt si, 23
or cl, cl
xor al, bl
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
bts rcx, rbx
and dil, -62
or al, sil
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
