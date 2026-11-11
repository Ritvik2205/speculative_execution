.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
sub rdx, rbx
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
not bl
lea di, qword ptr [rdi + rbx]
cmovbe dx, dx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 6
cwd
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], eax
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
bts ax, 201
dec bl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
jmp .bb_0.1
.bb_0.1:
add al, 109 # instrumentation
adc di, 68
lea edx, qword ptr [rdi + rdi]
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
cmovnp rdi, rcx
setno cl
add bl, 68
cmp al, -119
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
