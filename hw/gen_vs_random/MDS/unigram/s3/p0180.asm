.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdx]
cmovb rdx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
not bl
btc rcx, 21
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
and esi, 80
and rbx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
cmovl rax, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
xor edx, 4
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 62
or al, bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
xor al, -119
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and dl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
