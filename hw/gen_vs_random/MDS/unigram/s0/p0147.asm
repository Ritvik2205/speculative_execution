.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edx, -372470678
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rcx
and al, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rax], ax
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
btc ecx, 62
and bl, -28 # instrumentation
cmovl rbx, rsi
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], -104
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rsi
jmp .bb_0.1
.bb_0.1:
and rbx, rbx
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rax], di
bt rsi, rcx
and cl, -127 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and cl, 122 # instrumentation
cmovl esi, esi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and dl, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
and dl, -108 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
