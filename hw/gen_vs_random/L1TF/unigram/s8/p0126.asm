.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo edi, eax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
btr rbx, rax
btc di, cx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 26
cmovno rbx, rsi
imul rdx, rdx, 95
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
setle dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 8
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and dx, ax
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 56
bts ax, 201
cmp bl, 123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
