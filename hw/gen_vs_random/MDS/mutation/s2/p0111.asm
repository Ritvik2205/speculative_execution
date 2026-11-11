.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
test al, -81
bts ebx, 205
cmovno rax, rdx
cmovb bx, bx
test eax, 424329527
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -59
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
or rbx, -72
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
not rdi
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
bts bx, dx
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
