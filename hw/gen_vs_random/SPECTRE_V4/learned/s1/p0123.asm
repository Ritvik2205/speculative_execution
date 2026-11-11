.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
sub cl, -51
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
cmp bl, dil
and eax, 1913354318
test al, 114
xor ax, -17712
or dl, cl
and cx, -117
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and cl, bl
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
mov al, dil
cmovnb ebx, edx
and al, dil
cmp bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
