.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ecx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
add dl, -117 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rax]
setnle bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
not dl
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 3
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
add al, -21 # instrumentation
mov edi, esi
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
cmovp ax, cx
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
