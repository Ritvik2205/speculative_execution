.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb cl
sbb ax, -9869
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 59
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
setnp al
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
add dil, 88
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rax
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
or dx, 1 # instrumentation
dec rsi
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
