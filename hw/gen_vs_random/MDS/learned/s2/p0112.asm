.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, rcx
or al, dil
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 18
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
bts rsi, 89
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 30
or sil, -8
cmovp cx, bx
cmovnbe si, cx
xor dl, bl
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdi
test sil, bl
add dl, -76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdi]
bts rbx, 29
or cl, dil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 81
and al, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
