.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 105
xor al, bl
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
xchg dl, bl
cmp dil, 38
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 96
sbb edx, 23
and bl, dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
