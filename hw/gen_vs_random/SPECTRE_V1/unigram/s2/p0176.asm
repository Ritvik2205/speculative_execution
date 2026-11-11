.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
setp bl
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdi], si
inc ebx
seto al
add cl, 69 # instrumentation
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], sil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb sil, dl
and rdi, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rdi]
add bl, -121 # instrumentation
setno bl
cmovs rax, rax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 8
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 1
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 90
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
