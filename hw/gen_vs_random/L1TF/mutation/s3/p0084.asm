.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -95 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and bl, 89
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
add cl, 123 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
xor bl, dl
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
sbb rcx, rdi
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
bt ax, 205
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
nop
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
add al, -113 # instrumentation
mov rdi, -9188947962549951402
and rcx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
