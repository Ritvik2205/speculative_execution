.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 69
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
sbb bl, cl
add cl, 22 # instrumentation
cmovns rbx, rcx
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
xchg al, al
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx]
cmovnbe rdx, rbx
setno cl
btc ecx, 2
add dl, 6 # instrumentation
adc rbx, 4
xor cl, 114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
