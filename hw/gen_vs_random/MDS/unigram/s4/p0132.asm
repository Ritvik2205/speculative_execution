.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 4
test dil, 46
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
cmovnbe ecx, edx
xor bl, bl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and cl, cl
cmovnb rdi, rdx
and al, -8 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
xor si, 91
bt rcx, 44
and bl, 33 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 0
test dil, -51
cmovno rax, rax
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
xor dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
