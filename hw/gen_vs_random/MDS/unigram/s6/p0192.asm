.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 46
or sil, al
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rdi, rax
test dil, -51
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
cmovnz si, dx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
cmovnb bx, dx
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
cmovp edx, ecx
and al, 61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
xor bl, dl
cmovb rcx, rcx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
