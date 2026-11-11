.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, sil
test rax, rcx
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rbx
xor ecx, 41
lea esi, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmovle eax, edx
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
xor bl, sil
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
bswap rbx
add cl, 6 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rbx]
or al, dl
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
