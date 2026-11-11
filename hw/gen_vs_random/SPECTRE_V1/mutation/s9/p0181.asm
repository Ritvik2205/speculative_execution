.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -127 # instrumentation
setp cl
or ebx, -124
lea ecx, qword ptr [rcx + rdi + 65137]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and cl, al
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
test ax, -13885
lea rsi, qword ptr [rdi]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, -120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
mul sil
add cl, -18 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 77
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
jmp .bb_0.2
.bb_0.2:
add al, 123 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rax], di
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dl
mov eax, 1492571274
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
