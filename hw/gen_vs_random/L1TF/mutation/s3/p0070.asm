.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
add dl, 43 # instrumentation
adc cl, cl
sbb eax, 858696050
not cl
inc esi
lea rax, qword ptr [rdx + rdx + 1405]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and bl, bl
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
btr esi, ebx
mov rdx, -1012904117298842753
sbb cl, -123
setle al
mov bl, cl
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
xor bl, cl
imul cx, di, 19
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -109
lea si, qword ptr [rdi]
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
