.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rbx]
and ebx, 108
and rsi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rsi]
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
add bl, -52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
adc bl, -14
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi], -90
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -25
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], edx
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
sbb cl, dl
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and si, si
test rdi, rax
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
btc dx, di
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
sub eax, eax
cmp rax, 1138518729
adc ax, 87
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
cmovb eax, eax
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
lea si, qword ptr [rcx + rax]
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
lea edi, qword ptr [rdi]
cmovnbe rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
