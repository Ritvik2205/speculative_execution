.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, -111
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
add cl, -51 # instrumentation
cmovl edi, ebx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], 9
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
mov cl, al
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -77
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], -27
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
bts rcx, 45
mul cx
add ax, 6980
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
