.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns cx, si
cmovle cx, di
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rsi
cmovo rbx, rbx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
and dl, 16 # instrumentation
cmovle ebx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
test rax, -1579405415
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
btc rax, rsi
jmp .bb_0.1
.bb_0.1:
test ax, -11534
or rbx, -72
bt dx, ax
and rsi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and dil, -62
bts si, cx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
