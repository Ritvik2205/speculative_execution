.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 46 # instrumentation
sbb rax, -91
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 1
not dl
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -30
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -78
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
inc bl
or dil, 98
or eax, -1161451853
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
xor al, dl
cmp dil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
