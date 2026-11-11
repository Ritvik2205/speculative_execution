.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdx], si
test cl, dil
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
xor edx, 17
cmovl ax, bx
or bl, sil
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
and al, dil
or edx, edx
and dl, -41 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rbx]
and al, 54 # instrumentation
cmovnp cx, cx
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and dl, cl
cmovnbe rdx, rax
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
and al, dil
cmovs bx, cx
and rsi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
