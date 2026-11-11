.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 90
and dil, 125
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], esi
test rdi, rcx
xor ax, 31969
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rbx]
xor bx, 8
and dl, -72 # instrumentation
not dl
xor cl, sil
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 84
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
bts rcx, 62
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
bts bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
