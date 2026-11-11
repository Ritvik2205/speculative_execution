.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test esi, 84
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 62
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rcx
test al, 70
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], si
cmovnbe bx, dx
add cl, -26 # instrumentation
cmovnp si, ax
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
cmovb edi, edi
add cl, 20 # instrumentation
cmovnbe rax, rcx
test bl, 60
add al, al
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
