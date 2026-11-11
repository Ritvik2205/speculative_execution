.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ax, di, 53
and rax, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rax]
cmp al, dil
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add bl, 39 # instrumentation
lea bx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 6
setno cl
adc bl, 86
add dl, -36 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rbx]
lea rbx, qword ptr [rbx + rdx + 100]
add dl, 100 # instrumentation
lea si, qword ptr [rdx]
and sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
