.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
or rbx, -72
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
bts ebx, 205
bts bx, dx
not rdi
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 112
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -59
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
test eax, 1287331633
cmovb bx, bx
cmovno rax, rdx
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
test al, 91
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
