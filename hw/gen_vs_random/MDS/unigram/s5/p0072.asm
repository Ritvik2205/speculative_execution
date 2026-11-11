.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rcx, -17
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
xor al, bl
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
test dil, dil
xor sil, -46
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
bts ebx, 205
bts ebx, 205
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdx], cx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
and sil, -69
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edx
xor sil, -15
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
