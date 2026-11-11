.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc ebx
mov bl, dl
add al, -80
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
add cl, -75 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
add bl, 37 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 109
and rsi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rsi]
lea si, qword ptr [rdx + rsi + 21492]
cmp eax, -127
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
xor rax, rcx
imul sil
test ax, 636
mov cl, al
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
add al, 68 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 111
add dl, 85 # instrumentation
cmovp bx, bx
sbb cl, cl
setbe cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
cmovnbe rsi, rdx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
add edx, 56
cmovs di, dx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
lea rax, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
