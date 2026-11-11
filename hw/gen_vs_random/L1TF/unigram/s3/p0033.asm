.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdi
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rsi]
add cl, 121 # instrumentation
cmovs eax, eax
sbb al, dl
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
btc rdx, 49
add rsi, 4
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 103
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
add al, -74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
cmp rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
