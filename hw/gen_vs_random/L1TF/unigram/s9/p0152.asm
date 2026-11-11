.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 46
add bl, -45 # instrumentation
cmovs rdi, rdi
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rcx
setnle sil
add dil, dil
btr si, dx
btc edx, edx
jmp .bb_0.1
.bb_0.1:
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
add al, al
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
add dl, 127 # instrumentation
setnbe dil
setl bl
and rbx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 7
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
