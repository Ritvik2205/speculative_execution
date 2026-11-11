.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb eax, ecx
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
not rsi
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
test bl, dl
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edi
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
and eax, -409673666
cmovno edx, edx
add al, -48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], al
sub al, dl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
