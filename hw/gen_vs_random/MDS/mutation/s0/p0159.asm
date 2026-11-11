.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 66
not rdi
bts bx, dx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
cmovno rax, rdx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
cmovb bx, bx
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -59
test eax, 298249463
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
or rbx, -72
bts ebx, 205
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 112
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
