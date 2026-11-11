.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -90
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rsi
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rsi, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 2
add cl, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rax]
cmp dil, sil
add dl, 35 # instrumentation
cmovnz rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
