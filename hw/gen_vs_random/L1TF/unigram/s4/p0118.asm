.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 4 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], ax
mov bl, al
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
setno al
cmovle rax, rax
sub di, 22
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 12
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], al
movsx eax, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 21
cmovnbe edi, eax
test bl, 45
test dl, 84
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
add bl, 42 # instrumentation
lea edx, qword ptr [rbx + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
