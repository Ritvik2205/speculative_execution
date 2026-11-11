.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdi], di
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rbx]
cmovno bx, si
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
or rbx, rbx
jmp .bb_0.1
.bb_0.1:
cmp sil, bl
setp sil
mov eax, edx
xor sil, al
setl dl
adc bl, bl
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], cl
or dl, -92
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
