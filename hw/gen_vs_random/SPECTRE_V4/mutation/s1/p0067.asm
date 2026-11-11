.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 91 # instrumentation
adc bl, cl
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
cmovnp ax, di
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -681182795
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -47
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
neg ecx
bt ecx, 247
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1014276215
and cl, dl
adc dx, bx
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
or rcx, rdx
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and bl, dl
cmovo eax, edi
not eax
test rdi, -795635070
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], -21
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], -15
cmp al, cl
cmovle rcx, rdi
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edx
test bl, -29
and rdi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rsi]
mov bl, 29
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
not cl
and rcx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -122
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
adc rax, -827748523
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
add dl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and ax, 4
cmovno rcx, rax
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], si
test edi, 2142010790
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
