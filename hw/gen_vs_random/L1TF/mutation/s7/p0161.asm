.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], esi
test al, -84
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
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
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
