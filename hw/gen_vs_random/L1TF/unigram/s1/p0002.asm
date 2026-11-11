.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc ecx
test dil, bl
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 6
test dl, sil
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rbx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
add dl, -125 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
neg al
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
