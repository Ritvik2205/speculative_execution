.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rax], rax
add al, -121 # instrumentation
setno al
and rbx, rdi
xchg cl, al
cmovnbe rcx, rdi
btc ebx, 218
lea rsi, qword ptr [rdi + rax]
xor dl, al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
cmp al, 46
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
cmovs rcx, rcx
cmovnp rdx, rax
lea ecx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
