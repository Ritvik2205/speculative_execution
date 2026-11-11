.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb eax, ecx
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
not rsi
test bl, dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edi
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmovno edx, edx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and eax, -409673666
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
sub al, dl
add al, -48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
