.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -49 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rbx]
setl dl
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
setnbe cl
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
test rcx, rdi
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 97
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], sil
add si, ax
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
cmovnbe bx, di
test dl, -37
add al, -113 # instrumentation
mov rdi, -9188947962549951402
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 69
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
