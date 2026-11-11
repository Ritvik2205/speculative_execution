.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -68
movsx eax, dl
and rcx, rdi
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
cmovnz ax, di
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 88
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 63
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
cmovb cx, di
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 61
and rdx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdx]
cmovnle ax, ax
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
cmovs rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
