.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
lea di, qword ptr [rax + rdi + 60]
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
sbb dx, 42
add dl, -57 # instrumentation
setz bl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
setb cl
sub sil, -99
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
or rsi, 1 # instrumentation
and rdx, rsi # instrumentation
shr rdx, 1 # instrumentation
div rsi
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
dec cx
xor ax, -24879
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
