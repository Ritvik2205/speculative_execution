.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 6
and rcx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
xor dx, di
or sil, -78
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
test dx, bx
btc edx, 7
cmovnz rax, rbx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
and rdi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and dl, 61 # instrumentation
cmovl ax, dx
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rdi
or rcx, -17
and bl, -56 # instrumentation
cmovnle ecx, edx
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
