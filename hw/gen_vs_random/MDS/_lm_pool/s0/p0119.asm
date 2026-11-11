.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
or ebx, edx
or al, -24
xor dil, al
test eax, 1287331633
xor ax, -12492
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
bt bx, si
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
test dil, sil
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdx
and di, 91
xor ax, -6793
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
