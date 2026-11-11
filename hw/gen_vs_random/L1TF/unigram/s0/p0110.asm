.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
cmp sil, -11
or al, -5
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
xchg dl, cl
and dil, cl
not esi
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 91
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
xchg rcx, rdi
mov al, cl
or al, dl
lea ax, qword ptr [rdi + rdx + 24773]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
