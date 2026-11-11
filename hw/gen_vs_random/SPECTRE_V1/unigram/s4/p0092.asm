.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rsi
lea rbx, qword ptr [rsi + rax + 99]
cmp sil, 25
lea rbx, qword ptr [rax + rax + 43]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
sub cl, dl
add sil, 103 # instrumentation
cmovno ecx, esi
add al, -117 # instrumentation
not rdx
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rcx]
lea rsi, qword ptr [rcx + rdi + 33]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
