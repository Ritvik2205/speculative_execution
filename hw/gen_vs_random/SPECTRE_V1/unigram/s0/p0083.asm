.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, 0b1000000000000000 # instrumentation
bsf bx, si
neg si
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
test dx, dx
bts rax, 140
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
mov dx, si
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 44
lea edi, qword ptr [rax]
setnb al
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
dec eax
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
