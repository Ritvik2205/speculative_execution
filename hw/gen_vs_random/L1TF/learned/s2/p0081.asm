.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
not al
add cl, 19
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rbx]
add cl, bl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edi
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 0
jmp .bb_0.1
.bb_0.1:
xor bl, dl
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
lea rax, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
add dil, 74
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 3
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
