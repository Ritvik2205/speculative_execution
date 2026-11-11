.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
mul dl
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -26 # instrumentation
cmovle rdx, rbx
adc dil, dl
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
add dl, -65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 75
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 88
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
cmovno di, di
add dil, 28 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
