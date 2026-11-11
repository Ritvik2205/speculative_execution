.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rcx + rdi + 25527]
bt di, 236
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
add cl, -109 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], -105
lea rcx, qword ptr [rax + rcx + 59274]
adc al, cl
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
and dil, cl
movsx rcx, sil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
dec rdi
adc rax, 51
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
cmovs di, dx
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rax
lea edi, qword ptr [rcx + rsi]
add bl, -107 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
or dx, 0b1000000000000000 # instrumentation
bsf si, dx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
sbb sil, sil
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 57
and rdi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdx
imul rdi, rsi, 80
or sil, 3
lea ecx, qword ptr [rbx]
cmovnle rbx, rbx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 45
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdi], bx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 72
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 2
test bl, 50
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
cmovns rbx, rdx
cmovb di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
