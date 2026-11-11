.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rcx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rcx
and bl, 68
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
bts ax, 22
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
jmp .bb_0.1
.bb_0.1:
test dl, cl
not rsi
cmovl dx, di
and rsi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
