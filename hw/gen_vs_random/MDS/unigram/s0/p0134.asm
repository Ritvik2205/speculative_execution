.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -127 # instrumentation
cmovno edi, eax
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
btr eax, edx
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 7
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
bts si, 158
xor al, 9
cmovns rbx, rbx
btc rax, rbx
and al, dil
and rcx, rdi
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], cx
btr ecx, ecx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
btc bx, ax
and dil, -62
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
