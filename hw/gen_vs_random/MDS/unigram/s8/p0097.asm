.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
xor dil, 81
cmovnl cx, si
bts dx, 50
bts rax, 77
or dl, al
cmovnle edi, ebx
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
or ax, -23697
and rdx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rdx]
test dil, -80
xor rax, rcx
or cl, 6
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
cmovno rbx, rax
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
