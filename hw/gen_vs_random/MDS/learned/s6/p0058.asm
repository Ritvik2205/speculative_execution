.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
test dl, 27
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
xor di, -83
xor ax, -23364
or al, 30
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
or al, -58
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
or eax, -927349615
and rax, 627810357
xor rcx, -2
test al, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
