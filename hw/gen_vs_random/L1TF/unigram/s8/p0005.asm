.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rax, 20
sbb al, al
add dl, 109 # instrumentation
cmovnb rdi, rsi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -5
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], si
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rdi
add dl, dl
cmovnz rax, rcx
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
bt rcx, 38
lea di, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rbx]
cmovnp ax, bx
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
