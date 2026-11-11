.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
lea si, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
mul rax
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ebx
add al, 83 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
add sil, -61
add al, al
add ax, -24961
setz sil
add cl, -20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
