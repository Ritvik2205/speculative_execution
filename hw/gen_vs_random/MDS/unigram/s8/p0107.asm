.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
cmovnle ax, bx
and dl, 50 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
xor al, bl
xor cl, 55
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
bts esi, ecx
cmovnle rdi, rbx
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 20
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 49
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 97
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 84
test si, 10
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
and bl, al
test sil, 41
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
