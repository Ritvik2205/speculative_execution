.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
not rsi
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
cmovnb eax, ecx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edi
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
test bl, dl
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add al, -48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
cmovno edx, edx
and eax, -409673666
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], al
sub al, dl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
imul rbx, rax, 6
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -100
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
xor eax, ecx
lea ebx, qword ptr [rsi + rbx + 65254]
add dl, al
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
xor ax, 0
sbb sil, -79
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
