.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 59
not cx
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ecx
cmovs di, cx
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 1665543409
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], edx
add cl, 40 # instrumentation
cmovbe ax, dx
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 66
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
setb al
and rsi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
